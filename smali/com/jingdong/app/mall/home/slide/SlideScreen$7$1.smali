.class Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$7$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$7;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/home/slide/SlideScreen;->getData(Lcom/jingdong/common/entity/HomeFloorElement;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$11(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/common/entity/HomeFloorElement;)V

    .line 369
    :cond_0
    return-void
.end method
