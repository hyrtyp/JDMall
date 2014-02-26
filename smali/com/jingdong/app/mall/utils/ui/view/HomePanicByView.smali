.class public Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
.super Landroid/widget/LinearLayout;
.source "HomePanicByView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomePanicByView"


# instance fields
.field private final MAX_SIZE:I

.field private context:Lcom/jingdong/app/mall/utils/MyActivity;

.field private dividerHeight:I

.field private group:Lcom/jingdong/common/utils/HttpGroup;

.field private headerHeight:I

.field private imageWh:I

.field private isTestA:Z

.field private model:Lcom/jingdong/common/entity/HomeFloorModel;

.field private padding:I

.field private textSize:I

.field private timeHeight:I

.field private timeMillis:J

.field private timeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->MAX_SIZE:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z

    .line 59
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x12

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->padding:I

    .line 61
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x82

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->imageWh:I

    .line 63
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x58

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->headerHeight:I

    .line 66
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2d

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeWidth:I

    .line 67
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x23

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeHeight:I

    .line 69
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->textSize:I

    .line 71
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->dividerHeight:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->MAX_SIZE:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z

    .line 59
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x12

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->padding:I

    .line 61
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x82

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->imageWh:I

    .line 63
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x58

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->headerHeight:I

    .line 66
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2d

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeWidth:I

    .line 67
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x23

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeHeight:I

    .line 69
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->textSize:I

    .line 71
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->dividerHeight:I

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->gotoPanicBuyList()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeMillis:J

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Ljava/util/List;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getContentView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getBottomDividerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getBottomDividerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 400
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 401
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->dividerHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 403
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-object v1
.end method

.method private getContentView(Ljava/util/List;)Landroid/view/View;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, products:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 249
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 250
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 253
    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 254
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getStartIndex()I

    move-result v0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 260
    .end local v0           #i:I
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    return-object v1

    .line 256
    .restart local v0       #i:I
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/Product;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getProductItemView(Lcom/jingdong/common/entity/Product;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 256
    goto :goto_2

    .line 260
    .end local v0           #i:I
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0c00c2

    const v6, 0x7f0c00c1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 95
    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, header:Landroid/view/View;
    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :goto_0
    new-instance v2, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->headerHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-object v0

    .line 100
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getProductItemView(Lcom/jingdong/common/entity/Product;Z)Landroid/view/View;
    .locals 23
    .parameter "product"
    .parameter "isLastOne"

    .prologue
    .line 120
    const v8, 0x7f030017

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 121
    .local v12, item:Landroid/view/View;
    const v8, 0x7f0c00bc

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 122
    .local v14, layout:Landroid/widget/LinearLayout;
    const v8, 0x7f0c00bd

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 124
    .local v11, icon:Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->imageWh:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->imageWh:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    const v8, 0x7f0c00be

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 128
    .local v15, panicbuyingPrice:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v19, "\uffe5"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getMiaoShaPrice()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v13, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v13, iv:Landroid/widget/ImageView;
    new-instance v9, Lcom/jingdong/app/mall/utils/ui/DateDrawable;

    invoke-direct {v9}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;-><init>()V

    .line 144
    .local v9, dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v19, 0x7f090070

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setPointColor(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v19, 0x7f090070

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setBackgroundColor(I)V

    .line 146
    move-object/from16 v0, p0

    iget v8, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeWidth:I

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setBackgroundWidth(I)V

    .line 147
    move-object/from16 v0, p0

    iget v8, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeHeight:I

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setBackgroundHeight(I)V

    .line 148
    const/4 v8, -0x1

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setTextColor(I)V

    .line 149
    move-object/from16 v0, p0

    iget v8, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->textSize:I

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setTextSize(F)V

    .line 150
    const-string v8, "00"

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setHour(Ljava/lang/CharSequence;)V

    .line 151
    const-string v8, "00"

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setMinute(Ljava/lang/CharSequence;)V

    .line 152
    const-string v8, "00"

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setSecond(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v19

    mul-int/lit8 v19, v19, 0x28

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x500

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v16, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v19

    mul-int/lit8 v19, v19, 0x22

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x500

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v21

    mul-int/lit8 v21, v21, 0xd

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x500

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v8, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 156
    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :try_start_0
    new-instance v3, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;

    invoke-direct {v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;-><init>()V

    .line 159
    .local v3, miaoShaUtil:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeMillis:J

    move-wide/from16 v21, v0

    sub-long v17, v19, v21

    .line 160
    .local v17, t:J
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getStartTime()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v4, v19, v17

    .line 161
    .local v4, start:J
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getEndTime()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v6, v19, v17

    .line 163
    .local v6, end:J
    const-wide/16 v19, 0x0

    cmp-long v8, v4, v19

    if-gtz v8, :cond_1

    const-wide/16 v19, 0x0

    cmp-long v8, v6, v19

    if-gtz v8, :cond_1

    .line 167
    const-string v8, "00"

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setHour(Ljava/lang/CharSequence;)V

    .line 168
    const-string v8, "00"

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setMinute(Ljava/lang/CharSequence;)V

    .line 169
    const-string v8, "00"

    invoke-virtual {v9, v8}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setSecond(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v9}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->invalidateSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v3           #miaoShaUtil:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v17           #t:J
    :goto_0
    new-instance v8, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v12, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    if-eqz p2, :cond_0

    .line 243
    const v8, 0x7f0c00bf

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_0
    return-object v12

    .line 172
    .restart local v3       #miaoShaUtil:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;
    .restart local v4       #start:J
    .restart local v6       #end:J
    .restart local v17       #t:J
    :cond_1
    :try_start_1
    new-instance v8, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Lcom/jingdong/app/mall/utils/ui/DateDrawable;)V

    invoke-virtual/range {v3 .. v8}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->setCountdown(JJLcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    .end local v3           #miaoShaUtil:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v17           #t:J
    :catch_0
    move-exception v10

    .line 219
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private gotoPanicBuyList()V
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "Click_MiaoShaList"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v2, Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "source"

    new-instance v2, Lcom/jingdong/common/entity/SourceEntity;

    const-string v3, "indexMiaoShaArea"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "com.360buy:clearHistoryFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getPanicBuyingList(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 358
    return-void
.end method

.method private setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "icon"
    .parameter "url"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    const/16 v1, 0x64

    invoke-static {v0, p1, p2, v1}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImageWithPriority(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 381
    return-void
.end method


# virtual methods
.method public getPanicBuyingList(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 362
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 364
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeFloorModel;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeFloorModel;->getParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/JsonParser;->parseParamsJsonFromString(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 366
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 367
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 368
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 369
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->group:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 370
    return-void
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 4
    .parameter "activity"
    .parameter "model"
    .parameter "group"

    .prologue
    const/4 v3, -0x1

    .line 266
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    .line 267
    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->group:Lcom/jingdong/common/utils/HttpGroup;

    .line 269
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v1, :cond_0

    .line 270
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->setVisibility(I)V

    .line 273
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->padding:I

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->setPadding(IIII)V

    .line 274
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v0, pagerParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 283
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->setOrientation(I)V

    .line 285
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->initData()V

    .line 286
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->initData()V

    .line 388
    return-void
.end method
