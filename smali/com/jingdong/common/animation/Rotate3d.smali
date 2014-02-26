.class public Lcom/jingdong/common/animation/Rotate3d;
.super Landroid/view/animation/Animation;
.source "Rotate3d.java"


# static fields
.field public static final ROTATE_X:I = 0x0

.field public static final ROTATE_XY:I = 0x3

.field public static final ROTATE_XYZ:I = 0x6

.field public static final ROTATE_XZ:I = 0x4

.field public static final ROTATE_Y:I = 0x1

.field public static final ROTATE_YZ:I = 0x5

.field public static final ROTATE_Z:I = 0x2


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private mFromDegree:F

.field private mSaveFromDegree:F

.field private mSaveToDegree:F

.field private mToDegree:F

.field private type:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "fromDegree"
    .parameter "toDegree"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 59
    iput p1, p0, Lcom/jingdong/common/animation/Rotate3d;->mFromDegree:F

    .line 60
    iput p2, p0, Lcom/jingdong/common/animation/Rotate3d;->mToDegree:F

    .line 61
    iput p3, p0, Lcom/jingdong/common/animation/Rotate3d;->mCenterX:F

    .line 62
    iput p4, p0, Lcom/jingdong/common/animation/Rotate3d;->mCenterY:F

    .line 63
    iput p1, p0, Lcom/jingdong/common/animation/Rotate3d;->mSaveFromDegree:F

    .line 64
    iput p2, p0, Lcom/jingdong/common/animation/Rotate3d;->mSaveToDegree:F

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/animation/Rotate3d;->type:I

    .line 66
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 121
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mFromDegree:F

    .line 122
    .local v0, FromDegree:F
    iget v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mToDegree:F

    iget v6, p0, Lcom/jingdong/common/animation/Rotate3d;->mFromDegree:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v3, v0, v5

    .line 123
    .local v3, degrees:F
    iget v1, p0, Lcom/jingdong/common/animation/Rotate3d;->mCenterX:F

    .line 124
    .local v1, centerX:F
    iget v2, p0, Lcom/jingdong/common/animation/Rotate3d;->mCenterY:F

    .line 125
    .local v2, centerY:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 127
    .local v4, matrix:Landroid/graphics/Matrix;
    const/high16 v5, -0x3d68

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    .line 128
    const/high16 v3, -0x3d4c

    .line 129
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 130
    invoke-virtual {p0, v3}, Lcom/jingdong/common/animation/Rotate3d;->rotate(F)V

    .line 131
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 132
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 148
    :goto_0
    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 149
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 150
    return-void

    .line 133
    :cond_0
    const/high16 v5, 0x4298

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    .line 134
    const/high16 v3, 0x42b4

    .line 135
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 136
    invoke-virtual {p0, v3}, Lcom/jingdong/common/animation/Rotate3d;->rotate(F)V

    .line 137
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 138
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 141
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v7, v7, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/jingdong/common/animation/Rotate3d;->rotate(F)V

    .line 143
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v1

    invoke-virtual {v5, v7, v7, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 144
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 145
    iget-object v5, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->type:I

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 116
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    .line 117
    return-void
.end method

.method public reverseTransformation(Z)V
    .locals 1
    .parameter "isReverse"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mSaveFromDegree:F

    neg-float v0, v0

    iput v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mFromDegree:F

    .line 75
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mSaveToDegree:F

    neg-float v0, v0

    iput v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mToDegree:F

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mSaveFromDegree:F

    iput v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mFromDegree:F

    .line 78
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mSaveToDegree:F

    iput v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mToDegree:F

    goto :goto_0
.end method

.method public rotate(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 83
    iget v0, p0, Lcom/jingdong/common/animation/Rotate3d;->type:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 95
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 99
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_0

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 103
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_0

    .line 106
    :pswitch_6
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 107
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 108
    iget-object v0, p0, Lcom/jingdong/common/animation/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 157
    iput p1, p0, Lcom/jingdong/common/animation/Rotate3d;->type:I

    .line 158
    return-void
.end method
