.class Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$2;
.super Ljava/lang/Object;
.source "DefaultEffectHttpListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->getModal()Landroid/view/ViewGroup;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$2;->this$1:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
