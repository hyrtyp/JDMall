.class Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;
.super Ljava/lang/Object;
.source "ShakeAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startHomeAlphaAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$orginalBitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$originalView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$originalView:Landroid/view/View;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$orginalBitmap:Landroid/graphics/Bitmap;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$originalView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$originalView:Landroid/view/View;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$originalView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$orginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$orginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils$2;->val$orginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 108
    return-void
.end method
