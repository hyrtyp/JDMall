.class Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleAnimation"
.end annotation


# static fields
.field private static final ANIMATION_START:J = -0x1L

.field private static final NO_ANIMATION:J = -0x2L


# instance fields
.field private mCurrentScale:F

.field private mDuration:I

.field private mEndScale:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartScale:F

.field private mStartTime:J

.field final synthetic this$0:Lcom/jingdong/common/utils/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/TouchImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 704
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->setDuration(I)V

    .line 705
    invoke-static {}, Lcom/jingdong/common/utils/TouchImageView;->access$3()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 706
    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 10
    .parameter "currentTimeMillis"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, -0x2

    .line 744
    iget-wide v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_0

    move v3, v5

    .line 754
    :goto_0
    return v3

    .line 746
    :cond_0
    iget-wide v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_1

    .line 747
    iput-wide p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 748
    :cond_1
    iget-wide v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    sub-long v3, p1, v3

    long-to-int v0, v3

    .line 749
    .local v0, elapse:I
    int-to-float v3, v0

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual {p0, v3, v4, v6}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->clamp(FFF)F

    move-result v2

    .line 750
    .local v2, x:F
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 751
    .local v1, i:Landroid/view/animation/Interpolator;
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mEndScale:F

    iget v6, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    sub-float/2addr v4, v6

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .end local v2           #x:F
    :cond_2
    mul-float/2addr v4, v2

    add-float v6, v3, v4

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mEndScale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mEndScale:F

    :goto_1
    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    iget v7, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mEndScale:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_5

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    :goto_2
    invoke-virtual {p0, v6, v3, v4}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mCurrentScale:F

    .line 752
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mDuration:I

    if-lt v0, v3, :cond_3

    .line 753
    iput-wide v8, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 754
    :cond_3
    iget-wide v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    .line 751
    :cond_4
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mEndScale:F

    goto :goto_2

    :cond_6
    move v3, v5

    .line 754
    goto :goto_0
.end method

.method clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 758
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 762
    .end local p3
    :goto_0
    return p3

    .line 760
    .restart local p3
    :cond_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move p3, p2

    .line 761
    goto :goto_0

    :cond_1
    move p3, p1

    .line 762
    goto :goto_0
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 736
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 737
    return-void
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mCurrentScale:F

    return v0
.end method

.method public init(FF)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 709
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartScale:F

    .line 710
    iput p2, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mEndScale:F

    .line 711
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mCurrentScale:F

    .line 712
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 713
    return-void
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 732
    iget-wide v0, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 720
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mDuration:I

    .line 721
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 717
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 728
    iput-wide p1, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 729
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 724
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->mStartTime:J

    .line 725
    return-void
.end method
