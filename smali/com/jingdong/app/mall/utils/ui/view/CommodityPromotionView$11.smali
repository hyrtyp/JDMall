.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1008
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->createCursor(I)V

    .line 1010
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$19(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$19(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$24(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$24(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07018e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$11;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1015
    :cond_0
    return-void
.end method
