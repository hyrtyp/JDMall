.class Lcom/jingdong/app/mall/product/ProductListActivity$10$9;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

.field private final synthetic val$couponURL:Ljava/lang/String;

.field private final synthetic val$roleIds:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->val$roleIds:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->val$couponURL:Ljava/lang/String;

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$9;)Lcom/jingdong/app/mall/product/ProductListActivity$10;
    .locals 1
    .parameter

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$58(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$58(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$58(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->val$roleIds:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->val$couponURL:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10$9;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
