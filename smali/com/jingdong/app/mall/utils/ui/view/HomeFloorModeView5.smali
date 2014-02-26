.class public Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;
.super Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
.source "HomeFloorModeView5.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private height:I

.field private imageMargin:I

.field private imagePadding:I

.field private layout:Landroid/widget/LinearLayout;

.field private layoutHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "HomeFloorModeView5"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->TAG:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x231

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->height:I

    .line 31
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x91

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layoutHeight:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imagePadding:I

    .line 41
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imageMargin:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "HomeFloorModeView5"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->TAG:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x231

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->height:I

    .line 31
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x91

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layoutHeight:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imagePadding:I

    .line 41
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imageMargin:I

    .line 54
    return-void
.end method

.method private generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIIII)Landroid/widget/ImageView;
    .locals 7
    .parameter "element"
    .parameter "index"
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marinRight"
    .parameter "marginBottom"

    .prologue
    const/4 v6, -0x1

    .line 140
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, imageView:Landroid/widget/ImageView;
    const v2, 0x7f0202fa

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 142
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imagePadding:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imagePadding:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imagePadding:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    iput p6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 149
    iput p4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 150
    iput p5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 151
    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    .line 157
    return-object v0
.end method

.method private initView(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeFloorElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    const/4 v3, 0x0

    .line 77
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "HomeFloorModeView5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initView() list: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 131
    return-void

    .line 83
    :cond_1
    const/4 v13, 0x0

    .line 85
    .local v13, view:Landroid/widget/ImageView;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/HomeFloorElement;

    .line 86
    .local v1, element:Lcom/jingdong/common/entity/HomeFloorElement;
    if-nez v1, :cond_3

    .line 81
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #view:Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 94
    .restart local v13       #view:Landroid/widget/ImageView;
    :cond_4
    if-eqz v13, :cond_5

    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {p0, v0, v13, v1, v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    goto :goto_1

    .line 99
    :cond_5
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_7

    .line 101
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    .line 102
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layoutHeight:I

    invoke-direct {v12, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v12, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imageMargin:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->addView(Landroid/view/View;)V

    .line 109
    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imageMargin:I

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIIII)Landroid/widget/ImageView;

    move-result-object v13

    .line 115
    .end local v12           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_6

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x0

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 112
    :cond_7
    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->imageMargin:I

    move-object v4, p0

    move-object v5, v1

    move v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIIII)Landroid/widget/ImageView;

    move-result-object v13

    goto :goto_2

    .line 118
    :catch_0
    move-exception v11

    .line 119
    .local v11, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method protected getPriority()I
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x69

    return v0
.end method

.method protected initLayoutParams()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initLayoutParams()V

    .line 66
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->setPadding(IIII)V

    .line 68
    return-void
.end method

.method protected refreshUI(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeFloorElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->initView(Ljava/util/ArrayList;)V

    .line 59
    return-void
.end method
