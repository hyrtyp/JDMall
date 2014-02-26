.class Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;
.super Ljava/lang/Object;
.source "PromotionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)Lcom/jingdong/app/mall/promotion/PromotionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$5(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)Lcom/jingdong/app/mall/promotion/PromotionActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v1}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$2(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/Promotion;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)Lcom/jingdong/app/mall/promotion/PromotionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$6(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
