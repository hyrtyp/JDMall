.class public Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;
.super Ljava/lang/Object;
.source "ShakeAnimationUtils.java"


# static fields
.field public static final ANIMATION_TIME:I = 0xbb8

.field public static final ANIMATION_TIME_BG:I = 0x5dc

.field public static final ANIMATION_TIME_NEW_BG:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBottomAnim(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 39
    :cond_0
    return-void
.end method

.method public static startAlphaAnim(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .parameter "viewBottom"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 52
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public static startBottomAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "viewBottom"

    .prologue
    .line 24
    const v1, 0x7f04000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 25
    .local v0, shakeAnimation:Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 29
    :cond_0
    invoke-static {p1, p2}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startAlphaAnim(Landroid/view/View;Landroid/view/View;)V

    .line 30
    return-void
.end method

.method public static startHomeAlphaAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "originalView"
    .parameter "newView"
    .parameter "orginalBitmap"

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3dcccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 97
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;

    invoke-direct {v1, p1, p0, p3}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
