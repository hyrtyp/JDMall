.class Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    iget-object v0, v0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->actionClickListener:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    iget-object v0, v0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->actionClickListener:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;

    invoke-interface {v0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;->onLeftClicked()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->dismiss()V

    .line 76
    return-void
.end method
