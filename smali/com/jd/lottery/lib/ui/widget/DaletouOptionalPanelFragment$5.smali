.class Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$5;
.super Ljava/lang/Object;
.source "DaletouOptionalPanelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->setupViews(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->showPopupWindow(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->access$4(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;Landroid/view/View;)V

    .line 166
    return-void
.end method
