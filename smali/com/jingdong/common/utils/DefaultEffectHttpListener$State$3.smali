.class Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;
.super Ljava/lang/Object;
.source "DefaultEffectHttpListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->firstMission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

.field private final synthetic val$modal:Landroid/view/ViewGroup;

.field private final synthetic val$rootFrameLayout:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    iput-object p2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->val$modal:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->val$rootFrameLayout:Landroid/view/ViewGroup;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 190
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->val$rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->val$modal:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->val$rootFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 194
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$2(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->onShowModal()V

    .line 196
    return-void
.end method
