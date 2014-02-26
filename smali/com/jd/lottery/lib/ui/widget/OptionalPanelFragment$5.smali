.class Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$5;
.super Ljava/lang/Object;
.source "OptionalPanelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setupViews(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showPopupWindow(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$4(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;Landroid/view/View;)V

    .line 157
    return-void
.end method
