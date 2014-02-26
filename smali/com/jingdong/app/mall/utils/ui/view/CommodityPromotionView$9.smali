.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->doStartActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

.field private final synthetic val$commercial:Lcom/jingdong/common/entity/Commercial;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Lcom/jingdong/common/entity/Commercial;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;)Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
    .locals 1
    .parameter

    .prologue
    .line 832
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$13(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    invoke-direct {v1, p0, p1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$9;Ljava/lang/String;Lcom/jingdong/common/entity/Commercial;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 843
    return-void
.end method
