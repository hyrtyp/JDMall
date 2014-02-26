.class public Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;
.super Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
.source "HomeFloorModeView4.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private height:I

.field private imageMargin:I

.field private imagePadding:I

.field private layout:Landroid/widget/LinearLayout;

.field private layoutHeight:I

.field protected paddingHorizontal:I

.field private rightLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x3c0

    .line 64
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "HomeFloorModeView4"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x13a

    :goto_0
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->height:I

    .line 35
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb

    :goto_1
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->paddingHorizontal:I

    .line 40
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0xe0

    :goto_2
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layoutHeight:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imagePadding:I

    .line 51
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    .line 65
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x196

    div-int/lit16 v0, v0, 0x500

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x2d0

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x127

    div-int/lit16 v0, v0, 0x500

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x3c0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "HomeFloorModeView4"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x13a

    :goto_0
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->height:I

    .line 35
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb

    :goto_1
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->paddingHorizontal:I

    .line 40
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0xe0

    :goto_2
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layoutHeight:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imagePadding:I

    .line 51
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    .line 69
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x196

    div-int/lit16 v0, v0, 0x500

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x2d0

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x127

    div-int/lit16 v0, v0, 0x500

    goto :goto_2
.end method

.method private generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIII)Landroid/widget/ImageView;
    .locals 7
    .parameter "element"
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marinRight"
    .parameter "marginBottom"

    .prologue
    const/4 v6, -0x1

    .line 157
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, imageView:Landroid/widget/ImageView;
    const v2, 0x7f0202fa

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imagePadding:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imagePadding:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imagePadding:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 165
    iput p5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 166
    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 167
    iput p4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 168
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    .line 174
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
    const/4 v13, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "HomeFloorModeView4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initView() list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    .line 90
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layoutHeight:I

    invoke-direct {v10, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v10, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    .end local v10           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    .line 97
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v11, rightParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f80

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    .end local v11           #rightParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v9, v0, :cond_3

    .line 148
    return-void

    .line 105
    :cond_3
    const/4 v12, 0x0

    .line 107
    .local v12, view:Landroid/widget/ImageView;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/HomeFloorElement;

    .line 108
    .local v1, element:Lcom/jingdong/common/entity/HomeFloorElement;
    if-nez v1, :cond_4

    .line 103
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v9, :cond_5

    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #view:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 116
    .restart local v12       #view:Landroid/widget/ImageView;
    :cond_5
    if-eqz v12, :cond_6

    .line 117
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {p0, v0, v12, v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    goto :goto_1

    .line 121
    :cond_6
    if-nez v9, :cond_8

    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->addView(Landroid/view/View;)V

    .line 127
    :cond_7
    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIII)Landroid/widget/ImageView;

    move-result-object v12

    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    :cond_8
    if-ne v9, v13, :cond_9

    .line 136
    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    iget v8, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    move-object v3, p0

    move-object v4, v1

    move v6, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIII)Landroid/widget/ImageView;

    move-result-object v12

    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    :cond_9
    const/4 v0, 0x2

    if-ne v9, v0, :cond_a

    .line 142
    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->imageMargin:I

    move-object v3, p0

    move-object v4, v1

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;IIII)Landroid/widget/ImageView;

    move-result-object v12

    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected getPriority()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x68

    return v0
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
    .line 73
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->initView(Ljava/util/ArrayList;)V

    .line 74
    return-void
.end method
