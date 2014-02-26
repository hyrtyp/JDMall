.class Lcom/jingdong/app/mall/home/slide/SlideScreen$7;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->reLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)Lcom/jingdong/app/mall/home/slide/SlideScreen;
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$10(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/NextPageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getLoadingButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    :cond_0
    return-void
.end method
