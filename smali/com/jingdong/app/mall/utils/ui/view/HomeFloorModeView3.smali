.class public Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;
.super Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
.source "HomeFloorModeView3.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private imageHeight:I

.field private imagePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "HomeFloorModeView3"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x127

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imageHeight:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imagePadding:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "HomeFloorModeView3"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x127

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imageHeight:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imagePadding:I

    .line 42
    return-void
.end method

.method private initView(Lcom/jingdong/common/entity/HomeFloorElement;)V
    .locals 7
    .parameter "element"

    .prologue
    const/4 v6, 0x0

    .line 75
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_0

    .line 76
    const-string v3, "HomeFloorModeView3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initView() element: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v2, 0x0

    .line 81
    .local v2, view:Landroid/widget/ImageView;
    if-nez p1, :cond_1

    .line 105
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 89
    .restart local v2       #view:Landroid/widget/ImageView;
    :cond_2
    if-eqz v2, :cond_3

    .line 90
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {p0, v3, v2, p1, v6}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    goto :goto_0

    .line 94
    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imageHeight:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v0, imageParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imagePadding:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imagePadding:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->imagePadding:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 98
    const v3, 0x7f0202fa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->addView(Landroid/view/View;)V

    .line 102
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, p1, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getPriority()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x67

    return v0
.end method

.method protected refreshUI(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 47
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "HomeFloorModeView3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshUI() list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/HomeFloorElement;

    .line 57
    .local v0, element:Lcom/jingdong/common/entity/HomeFloorElement;
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_3

    .line 58
    const-string v1, "HomeFloorModeView3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshUI() element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3
    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->initView(Lcom/jingdong/common/entity/HomeFloorElement;)V

    goto :goto_0
.end method
