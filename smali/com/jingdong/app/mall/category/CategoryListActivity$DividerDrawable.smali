.class Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CategoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DividerDrawable"
.end annotation


# instance fields
.field private color:I

.field private horizontal:Z

.field private intervalDoubled:I

.field private paint:Landroid/graphics/Paint;

.field private pointDoubled:I

.field private state:I

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;IIZI)V
    .locals 2
    .parameter
    .parameter "pointDoubled"
    .parameter "intervalDoubled"
    .parameter "horizontal"
    .parameter "color"

    .prologue
    const/4 v1, 0x1

    .line 413
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->state:I

    .line 406
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->pointDoubled:I

    .line 407
    iput v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->intervalDoubled:I

    .line 408
    iput-boolean v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    .line 409
    const v0, -0x777778

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->color:I

    .line 414
    iput p2, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->pointDoubled:I

    .line 415
    iput p3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->intervalDoubled:I

    .line 416
    iput-boolean p4, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    .line 417
    iput p5, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->color:I

    .line 418
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->state:I

    packed-switch v13, :pswitch_data_0

    .line 468
    :cond_0
    return-void

    .line 437
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 440
    .local v2, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->paint:Landroid/graphics/Paint;

    if-nez v13, :cond_1

    .line 441
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->paint:Landroid/graphics/Paint;

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->paint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->color:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 447
    .local v12, w:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 448
    .local v3, h:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->pointDoubled:I

    mul-int v8, v3, v13

    .line 449
    .local v8, pointW:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->intervalDoubled:I

    mul-int v5, v3, v13

    .line 451
    .local v5, intervalW:I
    add-int v13, v8, v5

    div-int v7, v12, v13

    .line 453
    .local v7, pointCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v7, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v13, :cond_4

    iget v11, v2, Landroid/graphics/Rect;->top:I

    .line 455
    .local v11, top:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v13, :cond_5

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 456
    .local v1, bottom:I
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v13, :cond_6

    iget v13, v2, Landroid/graphics/Rect;->left:I

    :goto_5
    add-int v14, v8, v5

    mul-int/2addr v14, v4

    add-int v6, v13, v14

    .line 457
    .local v6, left:I
    add-int v10, v6, v8

    .line 458
    .local v10, right:I
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v13, :cond_7

    move v13, v6

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v14, :cond_8

    .end local v11           #top:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v14, :cond_9

    move v14, v10

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->horizontal:Z

    if-eqz v15, :cond_a

    .end local v1           #bottom:I
    :goto_9
    invoke-direct {v9, v13, v11, v14, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 459
    .local v9, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 446
    .end local v3           #h:I
    .end local v4           #i:I
    .end local v5           #intervalW:I
    .end local v6           #left:I
    .end local v7           #pointCount:I
    .end local v8           #pointW:I
    .end local v9           #rect:Landroid/graphics/Rect;
    .end local v10           #right:I
    .end local v12           #w:I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    goto :goto_0

    .line 447
    .restart local v12       #w:I
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_1

    .line 454
    .restart local v3       #h:I
    .restart local v4       #i:I
    .restart local v5       #intervalW:I
    .restart local v7       #pointCount:I
    .restart local v8       #pointW:I
    :cond_4
    iget v11, v2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 455
    .restart local v11       #top:I
    :cond_5
    iget v1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 456
    .restart local v1       #bottom:I
    :cond_6
    iget v13, v2, Landroid/graphics/Rect;->top:I

    goto :goto_5

    .restart local v6       #left:I
    .restart local v10       #right:I
    :cond_7
    move v13, v11

    .line 458
    goto :goto_6

    :cond_8
    move v11, v6

    goto :goto_7

    .end local v11           #top:I
    :cond_9
    move v14, v1

    goto :goto_8

    :cond_a
    move v1, v10

    goto :goto_9

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 477
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 481
    return-void
.end method

.method public switchState()V
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->state:I

    packed-switch v0, :pswitch_data_0

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->state:I

    .line 429
    :goto_0
    return-void

    .line 423
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;->state:I

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
