.class public Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;
.super Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
.source "HomeFloorModeView2.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private height:I

.field private imagePadding:I

.field private layout:Landroid/widget/LinearLayout;

.field private layoutHeight:I

.field private leftLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "HomeFloorModeView2"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x186

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layoutHeight:I

    .line 32
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1de

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->height:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->imagePadding:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "HomeFloorModeView2"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x186

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layoutHeight:I

    .line 32
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1de

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->height:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->imagePadding:I

    .line 55
    return-void
.end method

.method private generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;)Landroid/widget/ImageView;
    .locals 7
    .parameter "element"

    .prologue
    const/4 v6, -0x1

    .line 158
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, imageView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->imagePadding:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->imagePadding:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->imagePadding:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->imagePadding:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    .line 168
    return-object v0
.end method

.method private initView(Ljava/util/ArrayList;)V
    .locals 13
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
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 76
    sget-boolean v5, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v5, :cond_0

    .line 77
    const-string v5, "HomeFloorModeView2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initView() list: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getHeader()Landroid/widget/TextView;

    move-result-object v5

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->paddingHorizontal:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getPaddingRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 83
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layoutHeight:I

    invoke-direct {v2, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_2

    .line 90
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    .line 91
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v3, rightParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    .end local v3           #rightParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 149
    return-void

    .line 99
    :cond_3
    const/4 v4, 0x0

    .line 101
    .local v4, view:Landroid/widget/ImageView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/HomeFloorElement;

    .line 102
    .local v0, element:Lcom/jingdong/common/entity/HomeFloorElement;
    if-nez v0, :cond_4

    .line 97
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_4
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_5

    .line 107
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #view:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 110
    .restart local v4       #view:Landroid/widget/ImageView;
    :cond_5
    if-eqz v4, :cond_6

    .line 111
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {p0, v5, v4, v0, v11}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    goto :goto_1

    .line 115
    :cond_6
    if-nez v1, :cond_9

    .line 116
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getHorizontalDivider()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->addView(Landroid/view/View;)V

    .line 118
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->addView(Landroid/view/View;)V

    .line 121
    :cond_7
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_8

    .line 122
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_8
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;)Landroid/widget/ImageView;

    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getHorizontalDivider()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    :cond_9
    if-ne v1, v12, :cond_a

    .line 134
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;)Landroid/widget/ImageView;

    move-result-object v4

    .line 135
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    :cond_a
    const/4 v5, 0x2

    if-ne v1, v5, :cond_b

    .line 140
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getVerticalDivider()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->generatorImageView(Lcom/jingdong/common/entity/HomeFloorElement;)Landroid/widget/ImageView;

    move-result-object v4

    .line 144
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    :cond_b
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected getImageRoundPx()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, -0x1

    return v0
.end method

.method protected getPriority()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x66

    return v0
.end method

.method protected initLayoutParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initLayoutParams()V

    .line 65
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->setPadding(IIII)V

    .line 67
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
    .line 59
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->initView(Ljava/util/ArrayList;)V

    .line 60
    return-void
.end method
