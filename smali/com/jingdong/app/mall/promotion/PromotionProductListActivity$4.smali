.class Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$4;
.super Ljava/lang/Object;
.source "PromotionProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$4;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$4;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$7(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$4;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$7(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method
