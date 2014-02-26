.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "index"
    .parameter "key"
    .parameter "error"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->showActivities(ILjava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isLoaderFinish:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$1(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 442
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "key"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0, p1, p2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->showActivities(ILjava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method

.method public onSyncronizotionParams(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->show()V

    .line 409
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 410
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isLoaderFinish:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$1(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 411
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commIndex:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;I)V

    .line 412
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->oldIndex:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;I)V

    .line 413
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->start()V

    .line 415
    :cond_0
    return-void
.end method
