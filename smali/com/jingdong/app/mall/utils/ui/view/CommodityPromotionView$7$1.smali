.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 483
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mLayoutLoadFaild:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$17(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mLayoutLoading:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$18(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$19(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    return-void
.end method
