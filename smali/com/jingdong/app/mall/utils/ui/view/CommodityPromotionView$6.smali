.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;
.super Ljava/lang/Thread;
.source "CommodityPromotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onReloadImage()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    .line 362
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 365
    const-string v0, "CommodityPromotionView_onReloadImage"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->setName(Ljava/lang/String;)V

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v2, v2, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v3, v3, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/Commercial;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$6;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$13(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    const/4 v5, 0x0

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivitesImage(ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$14(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method
