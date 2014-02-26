.class Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;
.super Ljava/lang/Object;
.source "DefaultEffectHttpListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->newProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$0(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$1(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v2}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$2(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$3(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;Landroid/widget/ProgressBar;)V

    .line 93
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$0(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$1(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$4(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method
