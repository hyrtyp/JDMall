.class Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$1;
.super Ljava/lang/Object;
.source "DaletouOptionalPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->showYaoyiyaoRandom()V
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    .line 79
    return-void
.end method
