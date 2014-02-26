.class public abstract Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
.super Landroid/widget/LinearLayout;
.source "HomeFloorModeBaseView.java"


# static fields
.field public static final COME_FROM:Ljava/lang/String; = "floor"

.field public static final KEY_FUNCTION_ID:Ljava/lang/String; = "functionId"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected activity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private dividerWh:I

.field protected group:Lcom/jingdong/common/utils/HttpGroup;

.field private header:Landroid/widget/TextView;

.field private height:I

.field private imageRoundPx:I

.field private marinBottom:I

.field protected model:Lcom/jingdong/common/entity/HomeFloorModel;

.field private paddingBottom:I

.field protected paddingHorizontal:I

.field private textHeight:I

.field private util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

.field protected viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, "HomeFloorModeBaseView"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->viewList:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->dividerWh:I

    .line 72
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x196

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->height:I

    .line 77
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingHorizontal:I

    .line 82
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingBottom:I

    .line 87
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->marinBottom:I

    .line 92
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 97
    const/high16 v0, 0x4040

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->imageRoundPx:I

    .line 105
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x58

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->textHeight:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string v0, "HomeFloorModeBaseView"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->viewList:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->dividerWh:I

    .line 72
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x196

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->height:I

    .line 77
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingHorizontal:I

    .line 82
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingBottom:I

    .line 87
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->marinBottom:I

    .line 92
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 97
    const/high16 v0, 0x4040

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->imageRoundPx:I

    .line 105
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x58

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->textHeight:I

    .line 109
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 143
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;)V

    .line 201
    .local v0, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->group:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorModel;->getFunctionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->addUseCache(Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected getHeader()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getHorizontalDivider()Landroid/view/View;
    .locals 4

    .prologue
    .line 339
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->dividerWh:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 341
    .local v0, textParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 343
    return-object v1
.end method

.method protected getImageRoundPx()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->imageRoundPx:I

    return v0
.end method

.method protected getPriority()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method protected getVerticalDivider()Landroid/view/View;
    .locals 4

    .prologue
    .line 352
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->dividerWh:I

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v0, textParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 356
    return-object v1
.end method

.method public declared-synchronized init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;Z)V
    .locals 2
    .parameter "activity"
    .parameter "model"
    .parameter "group"
    .parameter "isCache"

    .prologue
    const/16 v1, 0x8

    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-virtual {v0, p4}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->setOnlyUseCache(Z)V

    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 120
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setVisibility(I)V

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 124
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    .line 125
    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->group:Lcom/jingdong/common/utils/HttpGroup;

    .line 127
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V
    .locals 6
    .parameter "activity"
    .parameter "imageView"
    .parameter "element"
    .parameter "needDefaultDrawable"

    .prologue
    .line 254
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;Lcom/jingdong/common/entity/HomeFloorElement;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-virtual {p3}, Lcom/jingdong/common/entity/HomeFloorElement;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getImageRoundPx()I

    move-result v4

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getPriority()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;ZII)V

    .line 314
    return-void
.end method

.method protected initLayoutParams()V
    .locals 5

    .prologue
    .line 132
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v0, pagerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->marinBottom:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 134
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v1, 0x7f0202ff

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setBackgroundResource(I)V

    .line 136
    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingHorizontal:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingHorizontal:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->paddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setPadding(IIII)V

    .line 137
    return-void
.end method

.method protected declared-synchronized initUI(Ljava/util/ArrayList;)V
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
    .line 211
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initLayoutParams()V

    .line 213
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setOrientation(I)V

    .line 215
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setVisibility(I)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    .line 223
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->textHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, textParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/HomeFloorModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->header:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->addView(Landroid/view/View;)V

    .line 231
    .end local v0           #textParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->refreshUI(Ljava/util/ArrayList;)V

    .line 233
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_2
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract refreshUI(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeFloorElement;",
            ">;)V"
        }
    .end annotation
.end method
