.class public Lcom/jingdong/app/mall/shopping/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/Algorithm$HSV;,
        Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    }
.end annotation


# static fields
.field public static final BINS:I = 0x41


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ComputerSrcColorIndexF(II[ILjava/util/Vector;Ljava/util/Vector;I)I
    .locals 35
    .parameter "height"
    .parameter "width"
    .parameter "rgb"
    .parameter
    .parameter
    .parameter "p_PrimColorNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 198
    .local p3, p_ColorRate:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    .local p4, p_ColorIndex:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 199
    .local v12, feature:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 200
    .local v17, indexCentrePix:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/jingdong/app/mall/shopping/Algorithm$RGB;>;"
    const/16 v18, 0x0

    .local v18, j:I
    :goto_0
    const/16 v28, 0x41

    move/from16 v0, v18

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 205
    const/16 v27, 0x0

    .local v27, y:I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, p0

    if-lt v0, v1, :cond_2

    .line 224
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v15, v0, :cond_4

    .line 236
    const/16 v28, 0x41

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v28

    move/from16 v3, p5

    invoke-static {v12, v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/Algorithm;->FeatureSortData(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;II)V

    .line 237
    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 239
    new-instance v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    invoke-direct {v4}, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;-><init>()V

    .line 240
    .local v4, ImgCentre:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe8

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_6

    .line 242
    const/16 v28, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    .line 243
    .local v23, t:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    .line 244
    move-object/from16 v0, v23

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    .line 245
    move-object/from16 v0, v23

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    .line 278
    .end local v23           #t:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    :cond_0
    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v29, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    .line 279
    .local v22, ret:I
    return v22

    .line 202
    .end local v4           #ImgCentre:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    .end local v15           #i:I
    .end local v22           #ret:I
    .end local v27           #y:I
    :cond_1
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    invoke-direct/range {v28 .. v28}, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 207
    .restart local v27       #y:I
    :cond_2
    const/16 v26, 0x0

    .local v26, x:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 205
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 209
    :cond_3
    mul-int v28, p1, v27

    add-int v20, v28, v26

    .line 210
    .local v20, offset:I
    aget v25, p2, v20

    .line 211
    .local v25, value:I
    shr-int/lit8 v28, v25, 0x10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v21, v0

    .line 212
    .local v21, r:C
    shr-int/lit8 v28, v25, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v13, v0

    .line 213
    .local v13, g:C
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v5, v0

    .line 214
    .local v5, b:C
    move/from16 v0, v21

    invoke-static {v0, v13, v5}, Lcom/jingdong/app/mall/shopping/Algorithm;->RGB2HSV(CCC)Lcom/jingdong/app/mall/shopping/Algorithm$HSV;

    move-result-object v14

    .line 215
    .local v14, h:Lcom/jingdong/app/mall/shopping/Algorithm$HSV;
    invoke-static {v14}, Lcom/jingdong/app/mall/shopping/Algorithm;->GetIndex(Lcom/jingdong/app/mall/shopping/Algorithm$HSV;)I

    move-result v16

    .line 216
    .local v16, index:I
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    const/high16 v29, 0x3f80

    add-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    move/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    .line 218
    .local v24, v:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    add-int v28, v28, v21

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    .line 219
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    .line 220
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v28, v0

    add-int v28, v28, v5

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    .line 207
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 226
    .end local v5           #b:C
    .end local v13           #g:C
    .end local v14           #h:Lcom/jingdong/app/mall/shopping/Algorithm$HSV;
    .end local v16           #index:I
    .end local v20           #offset:I
    .end local v21           #r:C
    .end local v24           #v:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    .end local v25           #value:I
    .end local v26           #x:I
    .restart local v15       #i:I
    :cond_4
    invoke-virtual {v12, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 227
    .local v11, f:F
    const/16 v28, 0x0

    cmpl-float v28, v11, v28

    if-eqz v28, :cond_5

    .line 229
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    .line 230
    .restart local v24       #v:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v28, v11

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    .line 231
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v28, v11

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    .line 232
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v28, v11

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    .line 234
    .end local v24           #v:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    :cond_5
    invoke-virtual {v12, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    mul-int v29, p0, p1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v15, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 249
    .end local v11           #f:F
    .restart local v4       #ImgCentre:Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
    :cond_6
    div-int/lit8 v28, p1, 0x2

    div-int/lit8 v29, p0, 0x2

    mul-int v29, v29, p1

    add-int v28, v28, v29

    aget v6, p2, v28

    .line 250
    .local v6, centerColor:I
    shr-int/lit8 v28, v6, 0x10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v21, v0

    .line 251
    .restart local v21       #r:C
    shr-int/lit8 v28, v6, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v13, v0

    .line 252
    .restart local v13       #g:C
    and-int/lit16 v0, v6, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v5, v0

    .line 253
    .restart local v5       #b:C
    move/from16 v0, v21

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    .line 254
    iput v13, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    .line 255
    iput v5, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    .line 256
    const/16 v28, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int/lit8 v19, v28, -0x1

    .line 257
    .local v19, k:I
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fc999999999999aL

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_0

    .line 259
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    .line 260
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v31, v0

    sub-int v28, v28, v31

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x4000

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    .line 259
    add-double v29, v29, v31

    .line 261
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v31, v0

    sub-int v28, v28, v31

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x4000

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    .line 259
    add-double v28, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 262
    .local v9, dis:D
    const/4 v15, 0x1

    :goto_4
    move/from16 v0, p5

    if-ge v15, v0, :cond_0

    .line 264
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    .line 265
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v31, v0

    sub-int v28, v28, v31

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x4000

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    .line 264
    add-double v29, v29, v31

    .line 266
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v28, v0

    iget v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v31, v0

    sub-int v28, v28, v31

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x4000

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    .line 264
    add-double v28, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 267
    .local v7, d:D
    cmpg-double v28, v7, v9

    if-gez v28, :cond_7

    .line 269
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int/lit8 v19, v28, -0x1

    .line 270
    move-wide v9, v7

    .line 272
    :cond_7
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    .line 273
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    .line 274
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v4, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    .line 262
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4
.end method

.method public static FeatureSortData(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter "p_Dim"
    .parameter "nNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, p_SrcData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    .local p1, p_MaxRate:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    .local p2, p_Index:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, p3}, Ljava/util/Vector;-><init>(I)V

    .line 166
    .local v5, tempt:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 170
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_1

    .line 186
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 187
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 188
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    if-lt v2, p4, :cond_4

    .line 193
    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 194
    return-void

    .line 168
    .end local v2           #k:I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    add-int/lit8 v6, p3, -0x1

    if-lt v1, v6, :cond_2

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_3

    .line 176
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 177
    .local v3, t1:F
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {p0, v1, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v6, v1, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 181
    .local v4, t2:I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v1, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v6, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v3           #t1:F
    .end local v4           #t2:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 190
    .end local v1           #j:I
    .restart local v2       #k:I
    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public static GetIndex(Lcom/jingdong/app/mall/shopping/Algorithm$HSV;)I
    .locals 14
    .parameter "hsv"

    .prologue
    const-wide/high16 v12, 0x3fe8

    const-wide v4, 0x3fd3333333333333L

    const-wide/high16 v10, 0x3ff0

    const-wide v8, 0x3fcd70a3d70a3d71L

    const-wide v6, 0x3fc70a3d70a3d70aL

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, l:I
    const/4 v0, -0x1

    .line 64
    .local v0, H:I
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x14a

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x168

    if-gt v2, v3, :cond_4

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 106
    :cond_2
    :goto_0
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_d

    .line 108
    const/16 v1, 0x3c

    .line 160
    :cond_3
    :goto_1
    return v1

    .line 68
    :cond_4
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_5

    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_6

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x41

    if-gt v2, v3, :cond_6

    .line 74
    const/4 v0, 0x2

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x41

    if-le v2, v3, :cond_7

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x50

    if-gt v2, v3, :cond_7

    .line 78
    const/4 v0, 0x3

    .line 79
    goto :goto_0

    .line 80
    :cond_7
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x50

    if-le v2, v3, :cond_8

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xa5

    if-gt v2, v3, :cond_8

    .line 82
    const/4 v0, 0x4

    .line 83
    goto :goto_0

    .line 84
    :cond_8
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xa5

    if-le v2, v3, :cond_9

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xaa

    if-gt v2, v3, :cond_9

    .line 86
    const/4 v0, 0x5

    .line 87
    goto :goto_0

    .line 88
    :cond_9
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xaa

    if-le v2, v3, :cond_a

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xeb

    if-gt v2, v3, :cond_a

    .line 90
    const/4 v0, 0x6

    .line 91
    goto :goto_0

    .line 92
    :cond_a
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xeb

    if-le v2, v3, :cond_b

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_b

    .line 94
    const/4 v0, 0x7

    .line 95
    goto :goto_0

    .line 96
    :cond_b
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0xf0

    if-le v2, v3, :cond_c

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x131

    if-gt v2, v3, :cond_c

    .line 98
    const/16 v0, 0x8

    .line 99
    goto/16 :goto_0

    .line 100
    :cond_c
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x131

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    const/16 v3, 0x14a

    if-gt v2, v3, :cond_2

    .line 102
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 110
    :cond_d
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_11

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    float-to-double v2, v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_11

    .line 112
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_e

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_e

    .line 114
    const/16 v1, 0x3d

    .line 115
    goto/16 :goto_1

    .line 116
    :cond_e
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-gez v2, :cond_f

    .line 118
    const/16 v1, 0x3e

    .line 119
    goto/16 :goto_1

    .line 120
    :cond_f
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_10

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    const-wide v4, 0x3feb333333333333L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    .line 122
    const/16 v1, 0x3f

    .line 123
    goto/16 :goto_1

    .line 124
    :cond_10
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    const-wide v4, 0x3feb333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_3

    .line 126
    const/16 v1, 0x40

    .line 128
    goto/16 :goto_1

    .line 129
    :cond_11
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_15

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    float-to-double v2, v2

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_15

    .line 131
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    const-wide v4, 0x3fea8f5c28f5c28fL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_12

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_12

    .line 133
    add-int/lit8 v1, v0, 0xa

    .line 134
    goto/16 :goto_1

    .line 135
    :cond_12
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    const-wide v4, 0x3fe8f5c28f5c28f6L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_13

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    const-wide v4, 0x3fea8f5c28f5c28fL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_13

    .line 137
    add-int/lit8 v1, v0, 0x14

    .line 138
    goto/16 :goto_1

    .line 139
    :cond_13
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_14

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    const-wide v4, 0x3fe8f5c28f5c28f6L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_14

    .line 141
    add-int/lit8 v1, v0, 0x1e

    .line 142
    goto/16 :goto_1

    .line 143
    :cond_14
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_3

    .line 145
    add-int/lit8 v1, v0, 0x28

    .line 147
    goto/16 :goto_1

    .line 148
    :cond_15
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_3

    .line 150
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_16

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_16

    .line 152
    add-int/lit8 v1, v0, 0x32

    .line 153
    goto/16 :goto_1

    .line 154
    :cond_16
    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_3

    .line 156
    move v1, v0

    goto/16 :goto_1
.end method

.method public static RGB2HSV(CCC)Lcom/jingdong/app/mall/shopping/Algorithm$HSV;
    .locals 10
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/high16 v9, 0x437f

    const-wide/high16 v7, 0x404e

    .line 27
    new-instance v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;

    invoke-direct {v0}, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;-><init>()V

    .line 28
    .local v0, h:Lcom/jingdong/app/mall/shopping/Algorithm$HSV;
    if-le p0, p1, :cond_0

    move v1, p0

    .line 29
    .local v1, max1:C
    :goto_0
    if-le v1, p2, :cond_1

    .line 30
    :goto_1
    if-ge p0, p1, :cond_2

    move v2, p0

    .line 31
    .local v2, min1:C
    :goto_2
    if-ge v2, p2, :cond_3

    .line 32
    :goto_3
    if-ne v1, v2, :cond_4

    .line 34
    const/4 v3, 0x0

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    .line 35
    const/4 v3, 0x0

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    .line 36
    int-to-float v3, v1

    div-float/2addr v3, v9

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    .line 57
    :goto_4
    return-object v0

    .end local v1           #max1:C
    .end local v2           #min1:C
    :cond_0
    move v1, p1

    .line 28
    goto :goto_0

    .restart local v1       #max1:C
    :cond_1
    move v1, p2

    .line 29
    goto :goto_1

    :cond_2
    move v2, p1

    .line 30
    goto :goto_2

    .restart local v2       #min1:C
    :cond_3
    move v2, p2

    .line 31
    goto :goto_3

    .line 39
    :cond_4
    if-ne p0, v1, :cond_6

    .line 41
    sub-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3c

    sub-int v4, v1, v2

    div-int/2addr v3, v4

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    .line 42
    iget v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    if-gez v3, :cond_5

    .line 44
    iget v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    add-int/lit16 v3, v3, 0x168

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    .line 55
    :cond_5
    :goto_5
    int-to-float v3, v1

    div-float/2addr v3, v9

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    .line 56
    sub-int v3, v1, v2

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    goto :goto_4

    .line 47
    :cond_6
    if-ne p1, v1, :cond_7

    .line 49
    const-wide/high16 v3, 0x4000

    sub-int v5, p2, p0

    int-to-float v5, v5

    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    goto :goto_5

    .line 53
    :cond_7
    const-wide/high16 v3, 0x4010

    sub-int v5, p0, p1

    int-to-float v5, v5

    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    goto :goto_5
.end method
