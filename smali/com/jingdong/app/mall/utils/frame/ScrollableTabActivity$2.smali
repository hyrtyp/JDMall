.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2$1;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->onChange()V

    return-void
.end method

.method private onChange()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/high16 v2, 0x4170

    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isShowArrow:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$7(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    const/high16 v1, 0x4280

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->onChange()V

    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    return v3
.end method
