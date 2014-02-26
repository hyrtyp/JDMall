.class Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;
.super Ljava/lang/Object;
.source "LimitBuyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 268
    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->val$product:Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 271
    .local v0, pid:J
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v2

    const-string v3, "Click_MiaoShaDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$1(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 276
    .end local v0           #pid:J
    :cond_1
    return-void
.end method
