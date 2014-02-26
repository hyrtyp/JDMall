.class Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$7;
.super Ljava/lang/Object;
.source "DaletouOptionalPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->showYaoyiyaoRandom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$7;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onRightClicked()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$7;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->shouYaoyiyaoResult()V
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->access$6(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    .line 239
    return-void
.end method
