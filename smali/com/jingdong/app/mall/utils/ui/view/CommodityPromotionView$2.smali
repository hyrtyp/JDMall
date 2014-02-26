.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$2;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->initActivities()Landroid/widget/ImageSwitcher;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->lockTouch:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$4(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 170
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->lockTouch:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$4(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 157
    return-void
.end method
