.class public Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RadioStateDrawable.java"


# static fields
.field public static final SHADE_BLUE:I = 0x1

.field public static final SHADE_GRAY:I = 0x0

.field public static final SHADE_GREEN:I = 0x4

.field public static final SHADE_MAGENTA:I = 0x2

.field public static final SHADE_ORANGE:I = 0x6

.field public static final SHADE_RED:I = 0x5

.field public static final SHADE_YELLOW:I = 0x3

.field public static screen_width:I

.field public static width:I


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field private highlight:Z

.field private highlightBitmap:Landroid/graphics/Bitmap;

.field private label:Ljava/lang/String;

.field private shader:Landroid/graphics/Shader;

.field private stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

.field private textShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZI)V
    .locals 3
    .parameter "context"
    .parameter "imageID"
    .parameter "label"
    .parameter "highlight"
    .parameter "shade"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 81
    iput-boolean p4, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->highlight:Z

    .line 82
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->context:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->label:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {p0, p5}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setShade(I)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->highlightBitmap:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZII)V
    .locals 9
    .parameter "context"
    .parameter "imageID"
    .parameter "label"
    .parameter "highlight"
    .parameter "startGradientColor"
    .parameter "endGradientColor"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 93
    iput-boolean p4, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->highlight:Z

    .line 94
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->context:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->label:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 97
    .local v8, is:Ljava/io/InputStream;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 98
    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p5, v5, v0

    const/4 v0, 0x1

    aput p6, v5, v0

    .line 99
    .local v5, shades:[I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->shader:Landroid/graphics/Shader;

    .line 100
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 150
    .local v19, iconW:I
    move/from16 v20, v19

    .line 151
    .local v20, iconWidth:I
    move/from16 v17, v19

    .line 155
    .local v17, iconHeight:I
    sget v6, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->width:I

    sub-int v6, v6, v20

    div-int/lit8 v32, v6, 0x2

    .line 156
    .local v32, x:I
    const/high16 v6, 0x4110

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v33

    .line 158
    .local v33, y:I
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 161
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 162
    .local v22, numP:Landroid/graphics/Paint;
    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    const/high16 v6, 0x4150

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 166
    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 167
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 168
    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    new-instance v26, Landroid/graphics/Rect;

    add-int v6, v32, v20

    add-int v7, v33, v17

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .local v26, rect:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 174
    .local v18, iconPaint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 176
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->bitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->getNum()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->getNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    .line 184
    .local v21, num:Ljava/lang/String;
    sget v6, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->width:I

    const/high16 v7, 0x41b8

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v13, v6

    .line 185
    .local v13, centerX:F
    const/high16 v6, 0x4110

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    add-int v6, v6, v33

    int-to-float v14, v6

    .line 187
    .local v14, centerY:F
    const/16 v30, 0x0

    .line 188
    .local v30, textWidth:F
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    new-array v0, v6, [F

    move-object/from16 v31, v0

    .line 189
    .local v31, widths:[F
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 190
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, v31

    array-length v6, v0

    move/from16 v0, v16

    if-lt v0, v6, :cond_1

    .line 194
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    .line 195
    .local v15, fm:Landroid/graphics/Paint$FontMetrics;
    iget v6, v15, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v9, v6, v7

    .line 198
    .local v9, textHeight:F
    const/high16 v6, 0x4120

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    int-to-float v6, v6

    add-float v6, v6, v30

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 199
    .local v25, rRectWidth:F
    move/from16 v23, v9

    .line 201
    .local v23, rRectHeight:F
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 202
    .local v24, rRectP:Landroid/graphics/Paint;
    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    new-instance v27, Landroid/graphics/RectF;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/RectF;-><init>()V

    .line 205
    .local v27, rectF:Landroid/graphics/RectF;
    const/high16 v6, 0x4000

    div-float v6, v25, v6

    sub-float v6, v13, v6

    move-object/from16 v0, v27

    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 206
    const/high16 v6, 0x4080

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v14, v6

    const/high16 v7, 0x4000

    div-float v7, v23, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 207
    move-object/from16 v0, v27

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float v6, v6, v25

    move-object/from16 v0, v27

    iput v6, v0, Landroid/graphics/RectF;->right:F

    .line 208
    move-object/from16 v0, v27

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float v6, v6, v23

    move-object/from16 v0, v27

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 209
    const/high16 v6, 0x4000

    div-float v28, v23, v6

    .line 210
    .local v28, rx:F
    move/from16 v29, v28

    .line 214
    .local v29, ry:F
    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 215
    const/high16 v10, -0xb

    const v11, -0x4efdfe

    .line 216
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 214
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 217
    .local v5, mShader:Landroid/graphics/Shader;
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 219
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 224
    const/4 v6, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    const/high16 v6, 0x4000

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 229
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 231
    .end local v5           #mShader:Landroid/graphics/Shader;
    .end local v9           #textHeight:F
    .end local v13           #centerX:F
    .end local v14           #centerY:F
    .end local v15           #fm:Landroid/graphics/Paint$FontMetrics;
    .end local v16           #i:I
    .end local v21           #num:Ljava/lang/String;
    .end local v23           #rRectHeight:F
    .end local v24           #rRectP:Landroid/graphics/Paint;
    .end local v25           #rRectWidth:F
    .end local v27           #rectF:Landroid/graphics/RectF;
    .end local v28           #rx:F
    .end local v29           #ry:F
    .end local v30           #textWidth:F
    .end local v31           #widths:[F
    :cond_0
    return-void

    .line 191
    .restart local v13       #centerX:F
    .restart local v14       #centerY:F
    .restart local v16       #i:I
    .restart local v21       #num:Ljava/lang/String;
    .restart local v30       #textWidth:F
    .restart local v31       #widths:[F
    :cond_1
    aget v6, v31, v16

    add-float v30, v30, v6

    .line 190
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 240
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 244
    return-void
.end method

.method public setShade(I)V
    .locals 14
    .parameter "shade"

    .prologue
    const/16 v2, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 103
    new-array v5, v8, [I

    .line 104
    .local v5, shades:[I
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->shader:Landroid/graphics/Shader;

    .line 137
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->highlight:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v6, Landroid/graphics/LinearGradient;

    const/high16 v10, 0x4120

    new-array v11, v8, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->textShader:Landroid/graphics/Shader;

    .line 141
    :goto_1
    return-void

    .line 106
    :pswitch_0
    new-array v5, v8, [I

    .end local v5           #shades:[I
    fill-array-data v5, :array_1

    .line 107
    .restart local v5       #shades:[I
    goto :goto_0

    .line 110
    :pswitch_1
    new-array v5, v8, [I

    .end local v5           #shades:[I
    fill-array-data v5, :array_2

    .line 111
    .restart local v5       #shades:[I
    goto :goto_0

    .line 114
    :pswitch_2
    new-array v5, v8, [I

    .end local v5           #shades:[I
    fill-array-data v5, :array_3

    .line 115
    .restart local v5       #shades:[I
    goto :goto_0

    .line 118
    :pswitch_3
    new-array v5, v8, [I

    .end local v5           #shades:[I
    const v0, -0xff01

    aput v0, v5, v3

    const/16 v0, 0x124

    const/16 v2, 0x34

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v5, v4

    .line 119
    .restart local v5       #shades:[I
    goto :goto_0

    .line 122
    :pswitch_4
    new-array v5, v8, [I

    .end local v5           #shades:[I
    const/16 v0, -0x100

    aput v0, v5, v3

    const/16 v0, 0x7e

    invoke-static {v2, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v5, v4

    .line 123
    .restart local v5       #shades:[I
    goto :goto_0

    .line 126
    :pswitch_5
    new-array v5, v8, [I

    .end local v5           #shades:[I
    const/16 v0, 0x7e

    invoke-static {v2, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v5, v3

    const/16 v0, 0x5a

    invoke-static {v2, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v5, v4

    .line 127
    .restart local v5       #shades:[I
    goto :goto_0

    .line 130
    :pswitch_6
    new-array v5, v8, [I

    .end local v5           #shades:[I
    const v0, -0xff0100

    aput v0, v5, v3

    const/16 v0, 0x4f

    const/4 v2, 0x4

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v5, v4

    .restart local v5       #shades:[I
    goto/16 :goto_0

    .line 140
    :cond_0
    new-instance v6, Landroid/graphics/LinearGradient;

    const/high16 v10, 0x4120

    new-array v11, v8, [I

    fill-array-data v11, :array_4

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->textShader:Landroid/graphics/Shader;

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 138
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xcct 0xcct 0xcct 0xfft
    .end array-data

    .line 106
    :array_1
    .array-data 0x4
        0xcct 0xcct 0xcct 0xfft
        0x44t 0x44t 0x44t 0xfft
    .end array-data

    .line 110
    :array_2
    .array-data 0x4
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0xfft 0x0t 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data

    .line 140
    :array_4
    .array-data 0x4
        0xcct 0xcct 0xcct 0xfft
        0x44t 0x44t 0x44t 0xfft
    .end array-data
.end method

.method public setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V
    .locals 0
    .parameter "stateController"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    .line 248
    return-void
.end method
