.class Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$7;
.super Ljava/lang/Object;
.source "OptionalPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showYaoyiyaoRandom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$7;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onRightClicked()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$7;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->shouYaoyiyaoResult()V
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$6(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    .line 281
    return-void
.end method
