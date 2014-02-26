.class public Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;
.super Landroid/widget/RadioButton;
.source "RadioButtonCenter.java"


# instance fields
.field buttonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v1, Lcom/jingdong/app/mall/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    const v1, 0x7f020458

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setButtonDrawable(I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 35
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->getGravity()I

    move-result v5

    and-int/lit8 v3, v5, 0x70

    .line 37
    .local v3, verticalGravity:I
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 38
    .local v2, height:I
    const/4 v4, 0x0

    .line 39
    .local v4, y:I
    sparse-switch v3, :sswitch_data_0

    .line 47
    :goto_0
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 48
    .local v1, buttonWidth:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v0, v5, 0x2

    .line 49
    .local v0, buttonLeft:I
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v0, v1

    add-int v7, v4, v2

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .end local v0           #buttonLeft:I
    .end local v1           #buttonWidth:I
    .end local v2           #height:I
    .end local v3           #verticalGravity:I
    .end local v4           #y:I
    :cond_0
    return-void

    .line 41
    .restart local v2       #height:I
    .restart local v3       #verticalGravity:I
    .restart local v4       #y:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->getHeight()I

    move-result v5

    sub-int v4, v5, v2

    .line 42
    goto :goto_0

    .line 44
    :sswitch_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v4, v5, 0x2

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setButton(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "buttonDrawable"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method
