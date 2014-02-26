.class public Lcom/jingdong/common/ui/CountdownDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CountdownDrawable.java"


# static fields
.field public static final TYPE_DIY:I = 0x1

.field public static final TYPE_NORMOL:I


# instance fields
.field private final HH:Ljava/lang/String;

.field private final MM:Ljava/lang/String;

.field private final PREFIX:Ljava/lang/String;

.field private final SS:Ljava/lang/String;

.field private hh:Ljava/lang/CharSequence;

.field private mm:Ljava/lang/CharSequence;

.field private paint:Landroid/text/TextPaint;

.field private ss:Ljava/lang/CharSequence;

.field private text:Ljava/lang/CharSequence;

.field private text_color:I

.field private text_size:F

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    const-string v0, "\u8fd8\u5269"

    iput-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->PREFIX:Ljava/lang/String;

    .line 20
    const-string v0, "\u65f6"

    iput-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->HH:Ljava/lang/String;

    .line 21
    const-string v0, "\u5206"

    iput-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->MM:Ljava/lang/String;

    .line 22
    const-string v0, "\u79d2"

    iput-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->SS:Ljava/lang/String;

    .line 31
    const/high16 v0, -0x100

    iput v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text_color:I

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    .line 36
    iget-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 38
    iget-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    iget-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/ui/CountdownDrawable;->setType(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "context"
    .parameter "text"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/jingdong/common/ui/CountdownDrawable;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 51
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/ui/CountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 52
    .local v15, rect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .local v14, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/common/ui/CountdownDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 54
    iget v1, v15, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    .line 55
    .local v5, x:F
    iget v1, v15, Landroid/graphics/Rect;->top:I

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/common/ui/CountdownDrawable;->text_size:F

    add-float v16, v1, v2

    .line 57
    .local v16, tmp:F
    iget v1, v15, Landroid/graphics/Rect;->top:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/common/ui/CountdownDrawable;->text_size:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float v6, v1, v2

    .line 58
    .local v6, y:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->type:I

    packed-switch v1, :pswitch_data_0

    .line 92
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v14           #padding:Landroid/graphics/Rect;
    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v16           #tmp:F
    :goto_0
    return-void

    .line 60
    .restart local v5       #x:F
    .restart local v6       #y:F
    .restart local v14       #padding:Landroid/graphics/Rect;
    .restart local v15       #rect:Landroid/graphics/Rect;
    .restart local v16       #tmp:F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 61
    const-string v2, "\u8fd8\u5269"

    const/4 v3, 0x0

    const-string v1, "\u8fd8\u5269"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 63
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const-string v2, "\u8fd8\u5269"

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v11, v5, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 65
    const-string v8, "\u65f6"

    const/4 v9, 0x0

    const-string v1, "\u65f6"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fd8\u5269"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v11, v5, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 67
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/common/ui/CountdownDrawable;->mm:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->mm:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fd8\u5269"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v11, v5, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 69
    const-string v8, "\u5206"

    const/4 v9, 0x0

    const-string v1, "\u5206"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fd8\u5269"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->mm:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v11, v5, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 71
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/common/ui/CountdownDrawable;->ss:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->ss:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fd8\u5269"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->mm:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5206"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v11, v5, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 73
    const-string v8, "\u79d2"

    const/4 v9, 0x0

    const-string v1, "\u79d2"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fd8\u5269"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->mm:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5206"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/common/ui/CountdownDrawable;->ss:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v11, v5, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 87
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v14           #padding:Landroid/graphics/Rect;
    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v16           #tmp:F
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 77
    .restart local v5       #x:F
    .restart local v6       #y:F
    .restart local v14       #padding:Landroid/graphics/Rect;
    .restart local v15       #rect:Landroid/graphics/Rect;
    .restart local v16       #tmp:F
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/common/ui/CountdownDrawable;->text_color:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/common/ui/CountdownDrawable;->text:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/ui/CountdownDrawable;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 79
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text_color:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text_size:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->type:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 97
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 102
    return-void
.end method

.method public setHour(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->hh:Ljava/lang/CharSequence;

    .line 115
    return-void
.end method

.method public setMinute(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->mm:Ljava/lang/CharSequence;

    .line 119
    return-void
.end method

.method public setSecond(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->ss:Ljava/lang/CharSequence;

    .line 123
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text:Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 138
    iput p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text_color:I

    .line 139
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "textSize"

    .prologue
    .line 146
    iput p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->text_size:F

    .line 147
    iget-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jingdong/common/ui/CountdownDrawable;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 150
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 130
    iput p1, p0, Lcom/jingdong/common/ui/CountdownDrawable;->type:I

    .line 131
    return-void
.end method
