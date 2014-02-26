.class public Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/jingdong/app/mall/home/PullRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private commIndex:I

.field private commLayout:Landroid/widget/LinearLayout;

.field public commercialCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public commercialsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;"
        }
    .end annotation
.end field

.field private currentThread:Ljava/lang/Thread;

.field private isActivityLoader:Z

.field private isDoUp:Z

.field private isDoing:Z

.field private isDown:Z

.field private isLoaderFinish:Z

.field private isOnline:Z

.field private isOnlyNetData:Z

.field private leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

.field private lockTouch:Z

.field private mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private mContext:Landroid/content/Context;

.field private mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private mLayoutLoadFaild:Landroid/widget/LinearLayout;

.field private mLayoutLoading:Landroid/widget/LinearLayout;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private oldIndex:I

.field final onCommercialListener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

.field private onWait:Z

.field private rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageSwitcher;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter "context"
    .parameter "switcher"
    .parameter "layout"
    .parameter "layoutLoading"
    .parameter "layoutLoadFaild"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnline:Z

    .line 76
    const-string v0, "CommodityPromotionView"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->TAG:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z

    .line 390
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onCommercialListener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    .line 96
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 97
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 99
    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    .line 100
    iput-object p5, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mLayoutLoadFaild:Landroid/widget/LinearLayout;

    .line 101
    iput-object p4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mLayoutLoading:Landroid/widget/LinearLayout;

    .line 102
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    const-string v1, "CommodityPromotionView"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->initActivities()Landroid/widget/ImageSwitcher;

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isLoaderFinish:Z

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onWait:Z

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivitesImage(ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z

    return v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isActivityLoader:Z

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mLayoutLoadFaild:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mLayoutLoading:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/ImageSwitcher;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isActivityLoader:Z

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnline:Z

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rotate3d()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->oldIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->lockTouch:Z

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->notifyCPV()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->lockTouch:Z

    return v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z

    return v0
.end method

.method private getActivitesImage(ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    .locals 9
    .parameter "index"
    .parameter
    .parameter "comm"
    .parameter "pool"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;",
            "Lcom/jingdong/common/entity/Commercial;",
            "Lcom/jingdong/common/utils/HttpGroup;",
            "Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 601
    .local p2, commercialList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    invoke-virtual {p3}, Lcom/jingdong/common/entity/Commercial;->getHorizontalImg()Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, key:Ljava/lang/String;
    :try_start_0
    new-instance v8, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 607
    .local v8, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/16 v0, 0x1388

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 608
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 609
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setForeverCache(Z)V

    .line 610
    invoke-virtual {v8, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 611
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;ILjava/lang/String;Ljava/util/ArrayList;Lcom/jingdong/common/utils/HttpGroup;)V

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 681
    invoke-virtual {p4, v8}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v8           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v7

    .line 683
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initActivities()Landroid/widget/ImageSwitcher;
    .locals 9

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 143
    .local v0, centerX:I
    new-instance v2, Lcom/jingdong/common/animation/Rotate3d;

    const/high16 v3, -0x3d4c

    int-to-float v4, v0

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/jingdong/common/animation/Rotate3d;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    .line 144
    new-instance v2, Lcom/jingdong/common/animation/Rotate3d;

    const/high16 v3, 0x42b4

    int-to-float v4, v0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/jingdong/common/animation/Rotate3d;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    .line 145
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v2, v6}, Lcom/jingdong/common/animation/Rotate3d;->setFillAfter(Z)V

    .line 146
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v2, v7, v8}, Lcom/jingdong/common/animation/Rotate3d;->setDuration(J)V

    .line 147
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v2, v6}, Lcom/jingdong/common/animation/Rotate3d;->setFillAfter(Z)V

    .line 148
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v2, v7, v8}, Lcom/jingdong/common/animation/Rotate3d;->setDuration(J)V

    .line 150
    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    .line 172
    .local v1, listener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/animation/Rotate3d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 173
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/animation/Rotate3d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->setAnimation(I)V

    .line 176
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v3, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$3;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$3;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->initCommercial()V

    .line 182
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    return-object v2
.end method

.method private initCommercial()V
    .locals 4

    .prologue
    .line 202
    new-instance v1, Lcom/jingdong/app/mall/utils/IGestureListener;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    invoke-direct {v1, v2, v3}, Lcom/jingdong/app/mall/utils/IGestureListener;-><init>(Landroid/view/ViewParent;Lcom/jingdong/app/mall/utils/IGestureListener$TouchFlingActionListener;)V

    .line 220
    .local v1, iGesture:Lcom/jingdong/app/mall/utils/IGestureListener;
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 221
    .local v0, detector:Landroid/view/GestureDetector;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v3, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Landroid/view/GestureDetector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 275
    return-void
.end method

.method private next(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 715
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->type:I

    packed-switch v0, :pswitch_data_0

    .line 724
    :goto_0
    return-object p1

    .line 717
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/animation/Rotate3d;->reverseTransformation(Z)V

    .line 718
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/animation/Rotate3d;->reverseTransformation(Z)V

    goto :goto_0

    .line 721
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->push_left()V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCPV()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 189
    monitor-exit v1

    .line 195
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onChange()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$12;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$12;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 1069
    return-void
.end method

.method private previous(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "drawable"

    .prologue
    const/4 v1, 0x1

    .line 695
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->type:I

    packed-switch v0, :pswitch_data_0

    .line 704
    :goto_0
    return-object p1

    .line 697
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/animation/Rotate3d;->reverseTransformation(Z)V

    .line 698
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/animation/Rotate3d;->reverseTransformation(Z)V

    goto :goto_0

    .line 701
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->push_right()V

    goto :goto_0

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private push_left()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 359
    return-void
.end method

.method private push_right()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 347
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 348
    return-void
.end method

.method private rotate3d()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rightAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->leftAnimation:Lcom/jingdong/common/animation/Rotate3d;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 332
    return-void
.end method

.method private setAnimation(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 312
    packed-switch p1, :pswitch_data_0

    .line 323
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rotate3d()V

    .line 326
    :goto_0
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->type:I

    .line 327
    return-void

    .line 314
    :pswitch_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rotate3d()V

    goto :goto_0

    .line 317
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->push_left()V

    goto :goto_0

    .line 320
    :pswitch_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->push_right()V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnline:Z

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v4, 0x7f07018e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v4, 0x7f070229

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearDrawable()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 939
    :cond_0
    return-void
.end method

.method public clearDrawableWithoutCurrent()V
    .locals 4

    .prologue
    .line 945
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 946
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    const/4 v1, 0x0

    .line 947
    .local v1, nextIndex:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 954
    .end local v0           #i:I
    .end local v1           #nextIndex:I
    :cond_0
    return-void

    .line 946
    :cond_1
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 948
    .restart local v0       #i:I
    .restart local v1       #nextIndex:I
    :cond_2
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 947
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Commercial;->getHorizontalImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public closeNight(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 898
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 900
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 901
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 904
    .end local v0           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public createCursor(I)V
    .locals 9
    .parameter "size"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 875
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 877
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v4, 0x1

    if-gt p1, v4, :cond_1

    .line 889
    :cond_0
    return-void

    .line 878
    :cond_1
    const v4, 0x7f030047

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 879
    .local v1, item:Landroid/view/View;
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int v3, v4, p1

    .line 883
    .local v3, w:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x4000

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 884
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    invoke-virtual {v2, v4, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 885
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    const v4, 0x7f020017

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 887
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public doNext(Z)V
    .locals 5
    .parameter "isAuto"

    .prologue
    const/4 v4, 0x1

    .line 767
    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z

    if-eqz v2, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    if-nez p1, :cond_2

    .line 770
    iput-boolean v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 776
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    if-gez v2, :cond_3

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    .line 781
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_0

    .line 785
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Commercial;->getHorizontalImg()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->previous(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 787
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 788
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->oldIndex:I

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->closeNight(I)V

    .line 789
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 790
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->oldIndex:I

    .line 791
    if-eqz v1, :cond_0

    .line 792
    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 776
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #v:Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    goto :goto_1

    .line 796
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public doPrevious(Z)V
    .locals 5
    .parameter "isAuto"

    .prologue
    const/4 v4, 0x1

    .line 731
    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z

    if-eqz v2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    if-nez p1, :cond_2

    .line 734
    iput-boolean v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z

    .line 739
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 740
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    .line 744
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_0

    .line 748
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Commercial;->getHorizontalImg()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->next(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 750
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 751
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->oldIndex:I

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->closeNight(I)V

    .line 752
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 753
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->oldIndex:I

    .line 754
    if-eqz v1, :cond_0

    .line 755
    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 740
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #v:Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    goto :goto_1

    .line 759
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public doStartActivity()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 801
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v1

    if-nez v1, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    if-gez v1, :cond_3

    :goto_1
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    .line 806
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    .line 807
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Commercial;

    .line 812
    .local v7, commercial:Lcom/jingdong/common/entity/Commercial;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getType()I

    move-result v11

    .line 813
    .local v11, type:I
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const-string v1, "Click_CommondityPromotionView"

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_2
    if-nez v11, :cond_5

    .line 820
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    .local v8, i:Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 823
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "commercial"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 824
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 825
    const-string v0, "source"

    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    const-string v2, "listActivity"

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 826
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-static {v0, v8}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    .end local v6           #b:Landroid/os/Bundle;
    .end local v8           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 805
    .end local v7           #commercial:Lcom/jingdong/common/entity/Commercial;
    .end local v11           #type:I
    :cond_3
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    goto :goto_1

    .line 806
    :cond_4
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I

    goto :goto_2

    .line 827
    .restart local v7       #commercial:Lcom/jingdong/common/entity/Commercial;
    .restart local v11       #type:I
    :cond_5
    const/4 v0, 0x1

    if-ne v11, v0, :cond_6

    .line 828
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/jingdong/app/mall/promotion/PromotionActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 829
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "source"

    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    const-string v2, "listActivity"

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 830
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0, v9}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 831
    .end local v9           #intent:Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x2

    if-ne v11, v0, :cond_7

    .line 832
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    new-instance v2, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;

    invoke-direct {v2, p0, v7}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Lcom/jingdong/common/entity/Commercial;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto/16 :goto_0

    .line 846
    :cond_7
    const/4 v0, 0x3

    if-ne v11, v0, :cond_8

    .line 847
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, action:Ljava/lang/String;
    new-instance v10, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v10}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 849
    .local v10, map:Lcom/jingdong/common/utils/URLParamMap;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const-string v0, "to"

    invoke-virtual {v10, v0, v3}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 851
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "to"

    invoke-virtual {v0, v1, v2, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto/16 :goto_0

    .line 854
    .end local v3           #action:Ljava/lang/String;
    .end local v10           #map:Lcom/jingdong/common/utils/URLParamMap;
    :cond_8
    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    .line 855
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Commercial;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 856
    .restart local v3       #action:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    new-instance v10, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v10}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 858
    .restart local v10       #map:Lcom/jingdong/common/utils/URLParamMap;
    const-string v0, "to"

    invoke-virtual {v10, v0, v3}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "to"

    const/4 v4, 0x0

    const-string v5, "screen_land"

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getActivities()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onCommercialListener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivities(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V

    .line 448
    return-void
.end method

.method public getActivities(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 461
    iput-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnline:Z

    .line 462
    new-instance v2, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V

    .line 565
    .local v2, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    :try_start_0
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 566
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "indexFocusActivity"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 567
    const-string v3, "page"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    const-string v3, "pagesize"

    const-string v4, "12"

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 570
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 571
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setForeverCache(Z)V

    .line 572
    iget-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z

    if-eqz v3, :cond_0

    .line 573
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 579
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 580
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-eqz v3, :cond_1

    .line 581
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 588
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_1
    return-void

    .line 575
    .restart local v1       #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "key"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public isActivityLoader()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isActivityLoader:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReloadImage()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    .line 386
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->start()V

    .line 387
    return-void
.end method

.method public removeDrawable(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    :cond_0
    return-void
.end method

.method public resetNoLoad()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1023
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z

    if-nez v0, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1024
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :try_start_2
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z

    if-eqz v0, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1035
    :try_start_3
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1031
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1038
    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onWait:Z

    if-eqz v0, :cond_2

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onWait:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1053
    return-void

    .line 1024
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1031
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1045
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onChange()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0
.end method

.method public setHttpGroup(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 0
    .parameter "httpGroup"

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 1100
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 1017
    return-void
.end method

.method public showActivities(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "key"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 990
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isLoaderFinish:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_0
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z

    .line 116
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onWait:Z

    .line 117
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z

    .line 118
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z

    .line 119
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->notifyCPV()V

    .line 121
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isLoaderFinish:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z

    .line 126
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onChange()V

    .line 128
    :cond_0
    return-void
.end method
