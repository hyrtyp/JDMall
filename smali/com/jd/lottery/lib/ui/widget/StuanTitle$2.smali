.class Lcom/jd/lottery/lib/ui/widget/StuanTitle$2;
.super Ljava/lang/Object;
.source "StuanTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/StuanTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/StuanTitle;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle$2;->this$0:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle$2;->this$0:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    #getter for: Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleClickListener:Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->access$0(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle$2;->this$0:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    #getter for: Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleClickListener:Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->access$0(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;->onRightClicked()V

    .line 80
    :cond_0
    return-void
.end method
