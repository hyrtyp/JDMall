.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutListener"
.end annotation


# instance fields
.field public initHeight:I

.field private originalHeigth:I

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    return-object v0
.end method


# virtual methods
.method public getOriginalHeigth()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->originalHeigth:I

    return v0
.end method

.method public init(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->view:Landroid/view/View;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->initHeight:I

    .line 287
    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 250
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->navigationDisplayMode:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 282
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 255
    .local v0, nowHeight:I
    iget v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->initHeight:I

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->setOriginalHeigth(I)V

    .line 266
    const/high16 v1, 0x4248

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->initHeight:I

    .line 268
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->initHeight:I

    if-gt v1, v0, :cond_2

    .line 269
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener$1;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)V

    .line 278
    const-wide/16 v3, 0x64

    .line 269
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->hideNavigation()V

    goto :goto_0
.end method

.method public setOriginalHeigth(I)V
    .locals 0
    .parameter "heigth"

    .prologue
    .line 290
    iput p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->originalHeigth:I

    .line 291
    return-void
.end method
