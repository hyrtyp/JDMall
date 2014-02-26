.class public Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;
.super Ljava/lang/Object;
.source "AmAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;
    }
.end annotation


# static fields
.field public static final SHAKE_ANIM_NUM:I = 0x1


# instance fields
.field private isStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->isStop:Z

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->isStop:Z

    return v0
.end method


# virtual methods
.method public final startAnimation(Lcom/jingdong/app/mall/utils/MyActivity;ILcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;)V
    .locals 6
    .parameter "context"
    .parameter "num"
    .parameter "action"

    .prologue
    const/4 v1, -0x1

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->isStop:Z

    .line 16
    const v0, 0x7f040001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 17
    .local v5, mHandAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 18
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 19
    const-wide/16 v0, 0x7d0

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 20
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;ILcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    invoke-interface {p3, v5}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;->onStart(Landroid/view/animation/Animation;)V

    .line 56
    return-void
.end method

.method public final stopAnimation()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->isStop:Z

    .line 60
    return-void
.end method
