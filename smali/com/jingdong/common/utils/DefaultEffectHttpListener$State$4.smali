.class Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;
.super Ljava/lang/Object;
.source "DefaultEffectHttpListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->run()V
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
    iput-object p1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    iput-object p2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->val$modal:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->val$rootFrameLayout:Landroid/view/ViewGroup;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->val$rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->val$modal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->val$rootFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 258
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    #getter for: Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->access$2(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->onHideModal()V

    .line 260
    return-void
.end method
