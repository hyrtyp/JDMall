.class public Lcom/jingdong/app/mall/utils/ui/DividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DividerDrawable.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private orientation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/DividerDrawable;->orientation:I

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 27
    .local v10, clipBounds:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .local v11, paint:Landroid/graphics/Paint;
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/DividerDrawable;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 29
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 30
    .local v0, mShader1:Landroid/graphics/Shader;
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v10, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    move-object v1, p1

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 34
    .local v1, mShader2:Landroid/graphics/Shader;
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    iget v2, v10, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move-object v2, p1

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    :goto_0
    return-void

    .line 38
    .end local v0           #mShader1:Landroid/graphics/Shader;
    .end local v1           #mShader2:Landroid/graphics/Shader;
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_2

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 39
    .restart local v0       #mShader1:Landroid/graphics/Shader;
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 40
    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object v2, p1

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 43
    .restart local v1       #mShader2:Landroid/graphics/Shader;
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    iget v2, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object v2, p1

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x9t 0x9t 0x9t 0x0t
        0x9t 0x9t 0x9t 0xfft
        0x9t 0x9t 0x9t 0x0t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x7at 0x7at 0x7at 0x0t
        0x7at 0x7at 0x7at 0xfft
        0x7at 0x7at 0x7at 0x0t
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x9t 0x9t 0x9t 0x0t
        0x9t 0x9t 0x9t 0xfft
        0x9t 0x9t 0x9t 0x0t
    .end array-data

    .line 42
    :array_3
    .array-data 0x4
        0x7at 0x7at 0x7at 0x0t
        0x7at 0x7at 0x7at 0xfft
        0x7at 0x7at 0x7at 0x0t
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 54
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 58
    return-void
.end method
