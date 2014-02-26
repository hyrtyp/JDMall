.class public Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;
.super Landroid/widget/LinearLayout;
.source "CarouselFigureView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarouselFigureView"


# instance fields
.field private final VIEW_CHANGE_INTERVAL:I

.field private cursorContent:Landroid/widget/LinearLayout;

.field private cursorDivider:I

.field private cursorHeight:I

.field private handler:Landroid/os/Handler;

.field private oldCursorPosition:I

.field private pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

.field private token:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorHeight:I

    .line 42
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorHeight:I

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorDivider:I

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->token:J

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->VIEW_CHANGE_INTERVAL:I

    .line 60
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->handler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorHeight:I

    .line 42
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorHeight:I

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorDivider:I

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->token:J

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->VIEW_CHANGE_INTERVAL:I

    .line 60
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->handler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->token:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->autoChangeViewPagerPosition()V

    return-void
.end method

.method private declared-synchronized autoChangeViewPagerPosition()V
    .locals 4

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->token:J

    .line 209
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getCurrentItem()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 211
    iget-wide v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->token:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0           #message:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private closeLight(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 230
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    .end local v0           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private openLight(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 244
    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->oldCursorPosition:I

    .line 248
    return-void
.end method


# virtual methods
.method public createCursor(I)V
    .locals 9
    .parameter "size"

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 153
    if-ge p1, v8, :cond_1

    .line 154
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->setVisibility(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v4, 0x2

    if-ge p1, v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    if-gt p1, v8, :cond_4

    .line 178
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getCurrentItem()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->openLight(I)V

    .line 180
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_4
    const v4, 0x7f030047

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, item:Landroid/view/View;
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v4

    div-int/2addr v4, p1

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorDivider:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 171
    .local v3, w:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x4000

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const v4, 0x7f020017

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/HomeFloorModel;Landroid/view/ViewGroup;IZ)V
    .locals 8
    .parameter "activity"
    .parameter "pullRefreshHttpGroup"
    .parameter "model"
    .parameter "parent"
    .parameter "pagerHeight"
    .parameter "isCache"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->setOrientation(I)V

    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-direct {v0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    .line 112
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v7, pagerParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setPadding(IIII)V

    .line 115
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v0, v7}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setCursorCallBack(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->addView(Landroid/view/View;)V

    .line 131
    .end local v7           #pagerParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    .line 133
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorHeight:I

    invoke-direct {v6, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v6, cursorParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->cursorContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v6           #cursorParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/HomeFloorModel;Landroid/view/ViewGroup;Z)V

    .line 140
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 219
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 188
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 192
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->oldCursorPosition:I

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->closeLight(I)V

    .line 193
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->openLight(I)V

    .line 195
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->autoChangeViewPagerPosition()V

    .line 196
    return-void
.end method
