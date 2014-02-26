.class Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$1;
.super Ljava/lang/Object;
.source "ShakeAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startAlphaAnim(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$1;->val$view:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->clearBottomAnim(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 73
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 65
    return-void
.end method
