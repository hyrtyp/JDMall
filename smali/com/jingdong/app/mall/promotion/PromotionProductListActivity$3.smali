.class Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;
.super Ljava/lang/Object;
.source "PromotionProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->setVisibleAndPadding(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

.field private final synthetic val$paddingTop:I

.field private final synthetic val$vsibleFlag:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    iput p2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->val$vsibleFlag:I

    iput p3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->val$paddingTop:I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v3, 0x4100

    .line 331
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$2(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->val$vsibleFlag:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->gridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$5(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iget v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;->val$paddingTop:I

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    const/high16 v4, 0x40c0

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 333
    return-void
.end method
