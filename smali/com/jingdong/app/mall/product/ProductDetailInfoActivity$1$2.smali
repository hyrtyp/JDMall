.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;
.super Ljava/lang/Object;
.source "ProductDetailInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

.field private final synthetic val$contentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;->val$contentLayout:Landroid/widget/RelativeLayout;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 251
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$4()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 252
    .local v0, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0c0015

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 253
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->containerView:Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$5(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$6(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$1()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 256
    .local v1, contentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x3e9

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->containerView:Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$5(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;->val$contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void
.end method
