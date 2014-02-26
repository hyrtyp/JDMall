.class Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;

.field private final synthetic val$couponURL:Ljava/lang/String;

.field private final synthetic val$roleIds:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;->val$roleIds:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;->val$couponURL:Ljava/lang/String;

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;)Lcom/jingdong/app/mall/product/ProductListActivity$10$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$9;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    const-string v1, "coupon"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;->val$roleIds:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;->val$couponURL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/CouponUtil;->queryTakeCoupon(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return-void
.end method
