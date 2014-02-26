.class Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;
.super Ljava/lang/Object;
.source "PromotionProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;

.field private final synthetic val$couponURL:Ljava/lang/String;

.field private final synthetic val$roleIds:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;->val$roleIds:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;->val$couponURL:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;)Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    move-result-object v0

    const-string v1, "coupon"

    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;->val$roleIds:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1$1;->val$couponURL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/CouponUtil;->queryTakeCoupon(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
